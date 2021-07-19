DROP DATABASE Oto;

CREATE DATABASE Oto;

USE Oto;

CREATE TABLE produit (
	prd_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	prd_marque VARCHAR(50) NOT NULL,
    prd_model VARCHAR(50) NOT NULL,
    prd_genre VARCHAR(50) NOT NULL,
    prd_etat VARCHAR(50) NOT NULL
);

CREATE TABLE dossier (
	dss_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	dss_reparation VARCHAR(50) NOT NULL,
    dss_entretien VARCHAR(50) NOT NULL
);

CREATE TABLE accessoires (
	acs_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	acs_vente VARCHAR(50) NOT NULL,
    acs_pose VARCHAR(50) NOT NULL,
    acs_options VARCHAR(50) NOT NULL
    
);

CREATE TABLE commerciaux (
	cmr_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	cmr_particulier VARCHAR(50) NOT NULL,
    cmr_professionnel VARCHAR(50) NOT NULL
  
);

CREATE TABLE vente (
	vnt_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	vnt_prd_id INT NOT NULL ,
	vnt_dss_id INT NOT NULL ,
    vnt_acs_id INT NOT NULL ,
    vnt_cmr_id INT NOT NULL ,
	FOREIGN KEY (vnt_prd_id) REFERENCES produit(prd_id),
	FOREIGN KEY (vnt_dss_id) REFERENCES dossier(dss_id),
    FOREIGN KEY (vnt_acs_id) REFERENCES accessoires(acs_id),
    FOREIGN KEY (vnt_cmr_id) REFERENCES commerciaux(cmr_id)
	
);
