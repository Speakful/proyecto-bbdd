CREATE TABLE IF NOT EXISTS campus ( -- OK
  campus VARCHAR(50) NOT NULL,
  id INT PRIMARY KEY

);

CREATE TABLE IF NOT EXISTS vertical ( -- OK
  vertical VARCHAR(50) NOT NULL,
  id INT PRIMARY KEY
);

CREATE TABLE IF NOT EXISTS modalidad ( --OK
  id INT PRIMARY KEY,
  modalidad varchar(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS rol ( -- OK
  rol VARCHAR(50) NOT NULL,
  id INT PRIMARY KEY
);

CREATE TABLE IF NOT EXISTS promocion ( -- OK
  promocion VARCHAR(50) NOT NULL,
  id INT PRIMARY KEY
);

CREATE TABLE IF NOT EXISTS students ( -- OK
  Nombre VARCHAR(50),
  Email VARCHAR(200),
  promocion_id INT,
  Fecha_comienzo DATE,
  campus_id INT,
  estudiante_id INT PRIMARY KEY,

  FOREIGN KEY (promocion_id) REFERENCES promocion(id),
  FOREIGN KEY (campus_id) REFERENCES campus(id)

);

CREATE TABLE IF NOT EXISTS faculty ( -- OK
  faculty_id INT PRIMARY KEY,
  Nombre VARCHAR(50) NOT NULL,
  rol_id INT,
  campus_id INT,
  vertical_id INT,

  FOREIGN KEY (campus_id) REFERENCES Campus(campus_id),
  FOREIGN KEY (vertical_id) REFERENCES Vertical(vertical_id),
  FOREIGN KEY (rol_id) REFERENCES Rol(rol_id)
);

-- CREATE TABLE Enrollments ( -- matrículas so students can enroll various times
--     enrollment_id INT PRIMARY KEY,
--     student_id INT,
--     cohort_id INT

--     FOREIGN KEY (student_id) REFERENCES Students(student_id),
--     FOREIGN KEY (cohort_id) REFERENCES Cohorts(cohort_id),
-- );

CREATE TABLE IF NOT EXISTS tipo_proyecto ( -- OK
  tipo_proyecto_id INT PRIMARY KEY,
  tipo_proyecto VARCHAR(100),
);



CREATE TABLE IF NOT EXISTS calificacion (  -- OK
  calificacion_id INT PRIMARY KEY,
  estudiante_id INT,
  tipo_proyecto_id INT,
  resultado varchar(50),

  FOREIGN KEY (tipo_proyecto_id) REFERENCES tipo_proyecto(id),
  FOREIGN KEY (estudiante_id) REFERENCES students(estudiante_id)
);