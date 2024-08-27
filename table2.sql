CREATE TABLE CLIENTE (
    IdCliente INTEGER PRIMARY KEY,
    Nombre TEXT,
    Correo TEXT,
    Direccion TEXT,
    RUT TEXT,
    Celular TEXT
);

CREATE TABLE EMPRESA (
    IdEmpresa INTEGER PRIMARY KEY,
    NombreEmpresa TEXT
);

CREATE TABLE HERRAMIENTA (
    IdHerramienta INTEGER PRIMARY KEY,
    NombreHerramienta TEXT,
    IdEmpresa INTEGER,
    FOREIGN KEY (IdEmpresa) REFERENCES EMPRESA(IdEmpresa)
);

CREATE TABLE ARRIENDO (
    IdArriendo INTEGER PRIMARY KEY,
    FechaInicio TEXT,
    FechaFin TEXT,
    IdCliente INTEGER,
    IdHerramienta INTEGER,
    FOREIGN KEY (IdCliente) REFERENCES CLIENTE(IdCliente),
    FOREIGN KEY (IdHerramienta) REFERENCES HERRAMIENTA(IdHerramienta)
);
