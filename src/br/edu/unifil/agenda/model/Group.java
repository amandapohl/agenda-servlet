package br.edu.unifil.agenda.model;

import javax.persistence.*;

@Entity
@Table(name="table_group")
@NamedQueries({
        @NamedQuery(name="Groups.getAll",query="SELECT g FROM Group g")
})
public class Group {

    @Id
    @GeneratedValue
    long id;

    String description;

    public Group(){

    }

    public Group(String _description){
        this.description = _description;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
