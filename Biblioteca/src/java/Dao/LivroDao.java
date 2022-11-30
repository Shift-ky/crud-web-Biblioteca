/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dao;
import Model.Livros;
import java.sql.Connection;
import java.sql.PreparedStatement;

/**
 *
 * @author famil
 */
public class LivroDao {
    Connection conexao;
    PreparedStatement pstm;
    
    
    public LivroDao(){
        conexao = new ConecaoFactory().conexaoBd();
        
    }
    
    public void createBook(Livros livro){
        String sql = "insert into livro(nome,autor,editora,paginas) vales(?,?,?,?)";
        
        try {
            pstm = conexao.prepareStatement(sql);
            pstm.setString(1, livro.getNome());
            pstm.setString(2, livro.getEditora());
            pstm.setString(3, livro.getAutor());
            pstm.setString(4, livro.getPaginas());
            
            pstm.execute();
            pstm.close();
        } catch (Exception e) {
        }
    }
    
}
