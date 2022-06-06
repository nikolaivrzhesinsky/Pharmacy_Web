package com.example.pharmacy_web.models;

import lombok.*;
import org.hibernate.Hibernate;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.util.Objects;

@Entity
@Table(name="purchases")
@Getter
@Setter
@RequiredArgsConstructor
public class Purchase {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private String activationCode;
    private LocalDateTime dateOfPurchase;

    @PrePersist
    private void onCreate() { dateOfPurchase = LocalDateTime.now(); }

    @ManyToOne(cascade = CascadeType.REFRESH, fetch = FetchType.LAZY)
    @JoinColumn(name="user_id")
    private User user;

    @ManyToOne(cascade = CascadeType.REFRESH,fetch = FetchType.LAZY)
    @JoinColumn(name="product_id")
    private Product product;


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || Hibernate.getClass(this) != Hibernate.getClass(o)) return false;
        Purchase purchases = (Purchase) o;
        return id != null && Objects.equals(id, purchases.id);
    }

    @Override
    public int hashCode() {
        return getClass().hashCode();
    }
}
