package flyway.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;

import java.util.UUID;

@Entity
public class Position {

    @Id
    @GeneratedValue
    private UUID id;

    @Min(-180)
    @Max(180)
    private double longitude;

    @Min(-90)
    @Max(90)
    private double latitude;
}
