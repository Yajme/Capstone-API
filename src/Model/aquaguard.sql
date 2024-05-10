CREATE TABLE tbl_user_account(
    id INT NOT NULL PRIMARY KEY,
    username varchar(255) NOT NULL,
    password varchar(255) NOT NULL,
    salt varchar(10) NOT NULL
);

CREATE TABLE tbl_user_info(
    id INT NOT NULL PRIMARY KEY,
    user_acc_id INT NOT NULL,
    fname VARCHAR(255) NOT NULL,
    lname VARCHAR(255) NOT NULL,
    mname VARCHAR(255),
    address VARCHAR(255) NOT NULL,
    phone VARCHAR(15) NOT NULL,
    FOREIGN KEY (user_acc_id) REFERENCES tbl_user_account(id)
);

CREATE TABLE tbl_cage(
    id INT NOT NULL PRIMARY KEY,
    device_id INT NOT NULL,
    name varchar(255) NOT NULL,
    description text NOT NULL,
    status varchar(50) NOT NULL,
    FOREIGN KEY (device_id) REFERENCES tbl_device(id)
);

CREATE TABLE tbl_cage_status(
    id INT NOT NULL PRIMARY KEY,
    cage_id INT NOT NULL,
    ph_level decimal(10,2),
    temperature decimal(10,2),
    nitrate decimal(10,2),
    DO decimal(10,2),
    FOREIGN KEY (cage_id) REFERENCES tbl_cage(id)
);

CREATE TABLE tbl_device(
    id INT NOT NULL PRIMARY KEY,
    name varchar(255),
    description text,
    status varchar(50)
);

CREATE TABLE tbl_contamination(
    id INT NOT NULL PRIMARY KEY,
    name varchar(255) NOT NULL,
    description text,
    guide text,
    notes text,
    link varchar(255)
);

CREATE TABLE tbl_maintenance(
    id INT NOT NULL PRIMARY KEY,
    name varchar(255) NOT NULL,
    description text,
    guide text,
    notes text,
    link varchar(255)
);

CREATE TABLE tbl_processed_records(
    id INT NOT NULL PRIMARY KEY,
    cage_id INT NOT NULL,
    results text,
    contamination_level INT NOT NULL,
    maintenance_type INT NOT NULL,
    last_viewed_by INT NOT NULL,
    FOREIGN KEY (contamination_level) REFERENCES tbl_contamination(id),
    FOREIGN KEY (maintenance_type) REFERENCES tbl_maintenance(id),
  FOREIGN KEY (last_viewed_by) REFERENCES tbl_user_account(id),
  FOREIGN KEY (cage_id) REFERENCES tbl_cage(id)
);
