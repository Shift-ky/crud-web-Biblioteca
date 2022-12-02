/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dao;
import Model.Livros;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author famil
 */
public class LivroDao {
    Connection conexao;
    PreparedStatement pstm;
    ResultSet rs;
    ArrayList<Livros> ALivros = new ArrayList<>();
    
    
    public LivroDao(){
        conexao = new ConecaoFactory().conexaoBd();
        
    }
    
    public void createBook(Livros livro){
        String sql = "insert into livro(nome,autor,editora,paginas) value(?,?,?,?)";
        
        try {
            pstm = conexao.prepareStatement(sql);
            pstm.setString(1, livro.getNome());
            pstm.setString(2, livro.getEditora());
            pstm.setString(3, livro.getAutor());
            pstm.setString(4, livro.getPaginas());
            
            pstm.execute();
            pstm.close();
            
        } catch (SQLException e) {
        }
    }
    
    public ArrayList readyBook(){
        String sql = "select * from livro";
        try {
            pstm = conexao.prepareStatement(sql);
            rs = pstm.executeQuery();
            
            while(rs.next()){
                Livros livro = new Livros();
                livro.setId_livro(rs.getInt("id_livro"));
                livro.setNome(rs.getString("nome"));
                livro.setAutor(rs.getString("autor"));
                livro.setEditora(rs.getString("editora"));
                livro.setPaginas(rs.getString("paginas"));
                
                ALivros.add(livro);
                
            }
        } catch (SQLException e) {
        }
        
        return ALivros;
    }
    
    public void deleteBook(Livros livro){
        String sql = "DELETE FROM livro WHERE id_livro=?";
        
        try {
            pstm = conexao.prepareStatement(sql);
            pstm.setInt(1,livro.getId_livro());
            pstm.execute();
            pstm.close();
        } catch (Exception e) {
        }
        
    }
    
    public void updateLivro(Livros livro){
        String sql = "UPDATE livro SET nome=?,autor=?,editora=?,paginas=? WHERE nome =?";
        
        try {
            pstm = conexao.prepareStatement(sql);
            pstm.setString(1,livro.getNome());
            pstm.setString(2,livro.getAutor());
            pstm.setString(3,livro.getEditora());
            pstm.setString(4,livro.getPaginas());
            pstm.setString(6,livro.getNome());
            
            pstm.execute();
            pstm.close();
                    
        } catch (Exception e) {
        }
    }
    
}
