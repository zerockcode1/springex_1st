package org.zerock.springex.dto;



import lombok.*;


import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.time.LocalDate;

@ToString
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class TodoDTO {

    private Long tno;

    @NotBlank
    @NotNull
    private String title;

    private LocalDate dueDate;

    private boolean finished;

}
