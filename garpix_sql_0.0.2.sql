CREATE TABLE data_result ( 
	calculation_id       INTEGER NOT NULL  PRIMARY KEY  ,
	loading_size_width   REAL     ,
	loading_size_height  REAL     ,
	loading_size_length  REAL     ,
	density_percent      REAL     ,
	filling_space_percent REAL     
 );

CREATE TABLE boxes ( 
	id                   INTEGER     ,
	calculation_id       INTEGER     ,
	size_width           REAL     ,
	size_height          REAL     ,
	size_length          REAL     ,
	stacking             BOOLEAN     ,
	turnover             BOOLEAN     ,
	FOREIGN KEY ( calculation_id ) REFERENCES data_result( calculation_id )  
 );

