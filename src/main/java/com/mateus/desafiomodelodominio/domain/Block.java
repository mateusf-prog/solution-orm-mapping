package com.mateus.desafiomodelodominio.domain;

import jakarta.persistence.*;

import java.time.Instant;
import java.util.Objects;

@Entity
@Table(name = "tb_blocks")
public class Block {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(name = "start_moment", columnDefinition = "TIMESTAMP")
    private Instant start;
    @Column(name = "end_moment", columnDefinition = "TIMESTAMP")
    private Instant end;

    @ManyToOne
    @JoinColumn(name = "activity_id")
    private Activity activity;

    public Block() {
    }

    public Block(Long id, Instant start, Instant end) {
        this.id = id;
        this.start = start;
        this.end = end;
    }

    public Activity getActivity() {
        return activity;
    }

    public void setActivity(Activity activity) {
        this.activity = activity;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Instant getStart() {
        return start;
    }

    public void setStart(Instant start) {
        this.start = start;
    }

    public Instant getEnd() {
        return end;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Block block = (Block) o;
        return Objects.equals(id, block.id);
    }

    @Override
    public int hashCode() {
        return Objects.hashCode(id);
    }

    public void setEnd(Instant end) {
        this.end = end;
    }
}
