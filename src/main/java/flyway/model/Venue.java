package flyway.model;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;

@Entity
public class Venue {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotNull
    @NotBlank
    @Size(min = 1, max = 100)
    @Column(unique = true)
    private String name;

    @OneToOne(fetch = FetchType.LAZY, optional = false, orphanRemoval = true)
    private Position position;

    @NotNull
    @Enumerated(EnumType.STRING)
    private ApprovalStatus approvalStatus;

    public enum ApprovalStatus {
        PENDING,
        APPROVED,
        REJECTED,
    }
}
