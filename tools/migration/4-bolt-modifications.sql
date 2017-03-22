ALTER TABLE bolt_relations
  CHANGE from_contenttype from_contenttype VARCHAR(32) NOT NULL,
  CHANGE from_id from_id INT NOT NULL,
  CHANGE to_contenttype to_contenttype VARCHAR(32) NOT NULL,
  CHANGE to_id to_id INT NOT NULL;
CREATE INDEX IDX_4C524BC3EA11294378CED90B ON bolt_relations (from_contenttype, from_id);
CREATE INDEX IDX_4C524BC35ACD264530354A65 ON bolt_relations (to_contenttype, to_id);
ALTER TABLE bolt_taxonomy
  CHANGE content_id content_id INT NOT NULL,
  CHANGE contenttype contenttype VARCHAR(32) NOT NULL,
  CHANGE taxonomytype taxonomytype VARCHAR(32) NOT NULL,
  CHANGE slug slug VARCHAR(64) NOT NULL;
CREATE INDEX IDX_ABAA120084A0A3ED ON bolt_taxonomy (content_id);
CREATE INDEX IDX_ABAA1200745E1826 ON bolt_taxonomy (contenttype);
CREATE INDEX IDX_ABAA1200FE2A268F ON bolt_taxonomy (taxonomytype);
CREATE INDEX IDX_ABAA1200989D9B62 ON bolt_taxonomy (slug);
CREATE INDEX IDX_ABAA1200FEA3B3F9 ON bolt_taxonomy (sortorder);
ALTER TABLE bolt_users DROP subsite, DROP subsite_id,
  CHANGE username username VARCHAR(32) NOT NULL,
  CHANGE password password VARCHAR(128) NOT NULL,
  CHANGE email email VARCHAR(254) NOT NULL,
  CHANGE displayname displayname VARCHAR(32) NOT NULL;
CREATE UNIQUE INDEX UNIQ_5585B54F85E0677 ON bolt_users (username);
CREATE UNIQUE INDEX UNIQ_5585B54E7927C74 ON bolt_users (email);
CREATE INDEX IDX_5585B5450F9BB84 ON bolt_users (enabled);
ALTER TABLE bolt_structures
  ADD attachments LONGTEXT DEFAULT NULL COMMENT '(DC2Type:json_array)',
  ADD filelist_downloads VARCHAR(256) DEFAULT '',
  ADD hide_related TINYINT(1) DEFAULT '0' NOT NULL,
  ADD support_navigation TINYINT(1) DEFAULT '0' NOT NULL,
  ADD contact_record LONGTEXT DEFAULT NULL,
  ADD contact_blurb LONGTEXT DEFAULT NULL,
  ADD structuretype LONGTEXT DEFAULT NULL,
  ADD subtheme LONGTEXT DEFAULT NULL,
  CHANGE slug slug VARCHAR(128) NOT NULL,
  CHANGE status status VARCHAR(32) NOT NULL,
  CHANGE subsite subsite LONGTEXT DEFAULT NULL;
CREATE INDEX IDX_75591AA989D9B62 ON bolt_structures (slug);
CREATE INDEX IDX_75591AAAFBA6FD8 ON bolt_structures (datecreated);
CREATE INDEX IDX_75591AABE74E59A ON bolt_structures (datechanged);
CREATE INDEX IDX_75591AAA5131421 ON bolt_structures (datepublish);
CREATE INDEX IDX_75591AAB7805520 ON bolt_structures (datedepublish);
CREATE INDEX IDX_75591AA7B00651C ON bolt_structures (status);
ALTER TABLE bolt_pages
  ADD calltoactiontext VARCHAR(256) DEFAULT '',
  ADD calltoactionlink VARCHAR(256) DEFAULT '',
  ADD attachments LONGTEXT DEFAULT NULL COMMENT '(DC2Type:json_array)',
  ADD filelist_downloads VARCHAR(256) DEFAULT '',
  ADD imagegallery LONGTEXT DEFAULT NULL COMMENT '(DC2Type:json_array)',
  ADD support_navigation TINYINT(1) DEFAULT '0' NOT NULL,
  ADD contact_record LONGTEXT DEFAULT NULL,
  ADD contact_blurb LONGTEXT DEFAULT NULL,
  CHANGE slug slug VARCHAR(128) NOT NULL,
  CHANGE status status VARCHAR(32) NOT NULL,
  CHANGE subsite subsite LONGTEXT DEFAULT NULL,
  CHANGE title title VARCHAR(256) DEFAULT '';
CREATE INDEX IDX_31AF1BC8989D9B62 ON bolt_pages (slug);
CREATE INDEX IDX_31AF1BC8AFBA6FD8 ON bolt_pages (datecreated);
CREATE INDEX IDX_31AF1BC8BE74E59A ON bolt_pages (datechanged);
CREATE INDEX IDX_31AF1BC8A5131421 ON bolt_pages (datepublish);
CREATE INDEX IDX_31AF1BC8B7805520 ON bolt_pages (datedepublish);
CREATE INDEX IDX_31AF1BC87B00651C ON bolt_pages (status);
ALTER TABLE bolt_blogposts
  ADD calltoactiontext VARCHAR(256) DEFAULT '',
  ADD calltoactionlink VARCHAR(256) DEFAULT '',
  ADD filelist_downloads VARCHAR(256) DEFAULT '',
  ADD hide_related TINYINT(1) DEFAULT '0' NOT NULL,
  ADD support_navigation TINYINT(1) DEFAULT '0' NOT NULL,
  ADD contact_record LONGTEXT DEFAULT NULL,
  ADD contact_blurb LONGTEXT DEFAULT NULL,
  ADD template VARCHAR(256) DEFAULT '',
  CHANGE slug slug VARCHAR(128) NOT NULL,
  CHANGE status status VARCHAR(32) NOT NULL,
  CHANGE subsite subsite LONGTEXT DEFAULT NULL;
CREATE INDEX IDX_6D96B2CA989D9B62 ON bolt_blogposts (slug);
CREATE INDEX IDX_6D96B2CAAFBA6FD8 ON bolt_blogposts (datecreated);
CREATE INDEX IDX_6D96B2CABE74E59A ON bolt_blogposts (datechanged);
CREATE INDEX IDX_6D96B2CAA5131421 ON bolt_blogposts (datepublish);
CREATE INDEX IDX_6D96B2CAB7805520 ON bolt_blogposts (datedepublish);
CREATE INDEX IDX_6D96B2CA7B00651C ON bolt_blogposts (status);
ALTER TABLE bolt_pressreleases
  ADD filelist_downloads VARCHAR(256) DEFAULT '',
  ADD imagegallery LONGTEXT DEFAULT NULL COMMENT '(DC2Type:json_array)',
  ADD hide_related TINYINT(1) DEFAULT '0' NOT NULL,
  ADD support_navigation TINYINT(1) DEFAULT '0' NOT NULL,
  ADD contact_record LONGTEXT DEFAULT NULL,
  ADD contact_blurb LONGTEXT DEFAULT NULL,
  ADD template VARCHAR(256) DEFAULT '',
  CHANGE slug slug VARCHAR(128) NOT NULL,
  CHANGE status status VARCHAR(32) NOT NULL,
  CHANGE subsite subsite LONGTEXT DEFAULT NULL;
CREATE INDEX IDX_C95D3508989D9B62 ON bolt_pressreleases (slug);
CREATE INDEX IDX_C95D3508AFBA6FD8 ON bolt_pressreleases (datecreated);
CREATE INDEX IDX_C95D3508BE74E59A ON bolt_pressreleases (datechanged);
CREATE INDEX IDX_C95D3508A5131421 ON bolt_pressreleases (datepublish);
CREATE INDEX IDX_C95D3508B7805520 ON bolt_pressreleases (datedepublish);
CREATE INDEX IDX_C95D35087B00651C ON bolt_pressreleases (status);
ALTER TABLE bolt_publications
  ADD intro LONGTEXT DEFAULT NULL,
  ADD teaser_image LONGTEXT DEFAULT NULL COMMENT '(DC2Type:json_array)',
  ADD contact_name VARCHAR(256) DEFAULT '',
  ADD contact_email VARCHAR(256) DEFAULT '',
  ADD contact_website VARCHAR(256) DEFAULT '',
  ADD attachments LONGTEXT DEFAULT NULL COMMENT '(DC2Type:json_array)',
  ADD filelist_downloads VARCHAR(256) DEFAULT '',
  ADD hide_list TINYINT(1) DEFAULT '0' NOT NULL,
  ADD hide_related TINYINT(1) DEFAULT '0' NOT NULL,
  ADD support_navigation TINYINT(1) DEFAULT '0' NOT NULL,
  ADD contact_record LONGTEXT DEFAULT NULL,
  ADD contact_blurb LONGTEXT DEFAULT NULL,
  ADD template VARCHAR(256) DEFAULT '',
  CHANGE slug slug VARCHAR(128) NOT NULL,
  CHANGE status status VARCHAR(32) NOT NULL,
  CHANGE subsite subsite LONGTEXT DEFAULT NULL,
  CHANGE title title VARCHAR(256) DEFAULT '',
  CHANGE isbn isbn VARCHAR(256) DEFAULT '';
CREATE INDEX IDX_4AC2124F989D9B62 ON bolt_publications (slug);
CREATE INDEX IDX_4AC2124FAFBA6FD8 ON bolt_publications (datecreated);
CREATE INDEX IDX_4AC2124FBE74E59A ON bolt_publications (datechanged);
CREATE INDEX IDX_4AC2124FA5131421 ON bolt_publications (datepublish);
CREATE INDEX IDX_4AC2124FB7805520 ON bolt_publications (datedepublish);
CREATE INDEX IDX_4AC2124F7B00651C ON bolt_publications (status);
ALTER TABLE bolt_applications
  ADD teaser_image LONGTEXT DEFAULT NULL COMMENT '(DC2Type:json_array)',
  ADD attachments LONGTEXT DEFAULT NULL COMMENT '(DC2Type:json_array)',
  ADD filelist_downloads VARCHAR(256) DEFAULT '',
  ADD structure_parent LONGTEXT DEFAULT NULL,
  ADD structure_sortorder INT DEFAULT 0 NOT NULL,
  ADD hide_list TINYINT(1) DEFAULT '0' NOT NULL,
  ADD hide_related TINYINT(1) DEFAULT '0' NOT NULL,
  ADD support_navigation TINYINT(1) DEFAULT '0' NOT NULL,
  ADD contact_record LONGTEXT DEFAULT NULL,
  ADD contact_blurb LONGTEXT DEFAULT NULL,
  ADD template VARCHAR(256) DEFAULT '',
  CHANGE slug slug VARCHAR(128) NOT NULL,
  CHANGE status status VARCHAR(32) NOT NULL,
  CHANGE subsite subsite LONGTEXT DEFAULT NULL,
  CHANGE contact_email contact_email VARCHAR(256) DEFAULT '',
  CHANGE contact_name contact_name VARCHAR(256) DEFAULT '',
  CHANGE contact_website contact_website VARCHAR(256) DEFAULT '',
  CHANGE link1 link1 VARCHAR(256) DEFAULT '',
  CHANGE link2 link2 VARCHAR(256) DEFAULT '',
  CHANGE link3 link3 VARCHAR(256) DEFAULT '',
  CHANGE title title VARCHAR(256) DEFAULT '';
CREATE INDEX IDX_8F734E4B989D9B62 ON bolt_applications (slug);
CREATE INDEX IDX_8F734E4BAFBA6FD8 ON bolt_applications (datecreated);
CREATE INDEX IDX_8F734E4BBE74E59A ON bolt_applications (datechanged);
CREATE INDEX IDX_8F734E4BA5131421 ON bolt_applications (datepublish);
CREATE INDEX IDX_8F734E4BB7805520 ON bolt_applications (datedepublish);
CREATE INDEX IDX_8F734E4B7B00651C ON bolt_applications (status);
ALTER TABLE bolt_data
  ADD teaser_image LONGTEXT DEFAULT NULL COMMENT '(DC2Type:json_array)',
  ADD contact_website VARCHAR(256) DEFAULT '',
  ADD attachments LONGTEXT DEFAULT NULL COMMENT '(DC2Type:json_array)',
  ADD filelist_downloads VARCHAR(256) DEFAULT '',
  ADD structure_parent LONGTEXT DEFAULT NULL,
  ADD structure_sortorder INT DEFAULT 0 NOT NULL,
  ADD hide_list TINYINT(1) DEFAULT '0' NOT NULL,
  ADD hide_related TINYINT(1) DEFAULT '0' NOT NULL,
  ADD support_navigation TINYINT(1) DEFAULT '0' NOT NULL,
  ADD contact_record LONGTEXT DEFAULT NULL,
  ADD contact_blurb LONGTEXT DEFAULT NULL,
  ADD template VARCHAR(256) DEFAULT '',
  CHANGE slug slug VARCHAR(128) NOT NULL,
  CHANGE status status VARCHAR(32) NOT NULL,
  CHANGE subsite subsite LONGTEXT DEFAULT NULL,
  CHANGE apiconsolelink apiconsolelink VARCHAR(256) DEFAULT '',
  CHANGE contact_email contact_email VARCHAR(256) DEFAULT '',
  CHANGE contact_name contact_name VARCHAR(256) DEFAULT '',
  CHANGE portallink portallink VARCHAR(256) DEFAULT '',
  CHANGE provided_by provided_by VARCHAR(256) DEFAULT '',
  CHANGE provided_by_link provided_by_link VARCHAR(256) DEFAULT '',
  CHANGE title title VARCHAR(256) DEFAULT '';
CREATE INDEX IDX_770612B8989D9B62 ON bolt_data (slug);
CREATE INDEX IDX_770612B8AFBA6FD8 ON bolt_data (datecreated);
CREATE INDEX IDX_770612B8BE74E59A ON bolt_data (datechanged);
CREATE INDEX IDX_770612B8A5131421 ON bolt_data (datepublish);
CREATE INDEX IDX_770612B8B7805520 ON bolt_data (datedepublish);
CREATE INDEX IDX_770612B87B00651C ON bolt_data (status);
ALTER TABLE bolt_documentation
  ADD image LONGTEXT DEFAULT NULL COMMENT '(DC2Type:json_array)',
  ADD attachments LONGTEXT DEFAULT NULL COMMENT '(DC2Type:json_array)',
  ADD filelist_downloads VARCHAR(256) DEFAULT '',
  ADD support_navigation TINYINT(1) DEFAULT '0' NOT NULL,
  ADD contact_record LONGTEXT DEFAULT NULL,
  ADD contact_blurb LONGTEXT DEFAULT NULL,
  ADD template VARCHAR(256) DEFAULT '',
  CHANGE slug slug VARCHAR(128) NOT NULL,
  CHANGE status status VARCHAR(32) NOT NULL,
  CHANGE subsite subsite LONGTEXT DEFAULT NULL,
  CHANGE title title VARCHAR(256) DEFAULT '',
  CHANGE link1 link1 VARCHAR(256) DEFAULT '',
  CHANGE link2 link2 VARCHAR(256) DEFAULT '',
  CHANGE link3 link3 VARCHAR(256) DEFAULT '',
  CHANGE hide_related_section hide_list TINYINT(1) DEFAULT '0' NOT NULL;
CREATE INDEX IDX_2F1E7917989D9B62 ON bolt_documentation (slug);
CREATE INDEX IDX_2F1E7917AFBA6FD8 ON bolt_documentation (datecreated);
CREATE INDEX IDX_2F1E7917BE74E59A ON bolt_documentation (datechanged);
CREATE INDEX IDX_2F1E7917A5131421 ON bolt_documentation (datepublish);
CREATE INDEX IDX_2F1E7917B7805520 ON bolt_documentation (datedepublish);
CREATE INDEX IDX_2F1E79177B00651C ON bolt_documentation (status);
ALTER TABLE bolt_collections
  ADD image LONGTEXT DEFAULT NULL COMMENT '(DC2Type:json_array)',
  ADD filelist_downloads VARCHAR(256) DEFAULT '',
  ADD contact_record LONGTEXT DEFAULT NULL,
  ADD contact_blurb LONGTEXT DEFAULT NULL,
  ADD template VARCHAR(256) DEFAULT '',
  CHANGE slug slug VARCHAR(128) NOT NULL,
  CHANGE status status VARCHAR(32) NOT NULL,
  CHANGE subsite subsite LONGTEXT DEFAULT NULL,
  CHANGE source source VARCHAR(256) DEFAULT '',
  CHANGE source_url source_url VARCHAR(256) DEFAULT '',
  CHANGE title title VARCHAR(256) DEFAULT '',
  CHANGE hide_related_section support_navigation TINYINT(1) DEFAULT '0' NOT NULL;
CREATE INDEX IDX_6EC4CAA6989D9B62 ON bolt_collections (slug);
CREATE INDEX IDX_6EC4CAA6AFBA6FD8 ON bolt_collections (datecreated);
CREATE INDEX IDX_6EC4CAA6BE74E59A ON bolt_collections (datechanged);
CREATE INDEX IDX_6EC4CAA6A5131421 ON bolt_collections (datepublish);
CREATE INDEX IDX_6EC4CAA6B7805520 ON bolt_collections (datedepublish);
CREATE INDEX IDX_6EC4CAA67B00651C ON bolt_collections (status);
ALTER TABLE bolt_taskforces
  ADD tf_or_wg LONGTEXT DEFAULT NULL,
  ADD image LONGTEXT DEFAULT NULL COMMENT '(DC2Type:json_array)',
  ADD filelist_downloads VARCHAR(256) DEFAULT '',
  ADD hide_list TINYINT(1) DEFAULT '0' NOT NULL,
  ADD hide_related TINYINT(1) DEFAULT '0' NOT NULL,
  ADD support_navigation TINYINT(1) DEFAULT '0' NOT NULL,
  ADD contact_record LONGTEXT DEFAULT NULL,
  ADD contact_blurb LONGTEXT DEFAULT NULL,
  ADD template VARCHAR(256) DEFAULT '',
  CHANGE slug slug VARCHAR(128) NOT NULL,
  CHANGE status status VARCHAR(32) NOT NULL,
  CHANGE subsite subsite LONGTEXT DEFAULT NULL,
  CHANGE title title VARCHAR(256) DEFAULT '',
  CHANGE subtitle subtitle VARCHAR(256) DEFAULT '';
CREATE INDEX IDX_3F5BAC3E989D9B62 ON bolt_taskforces (slug);
CREATE INDEX IDX_3F5BAC3EAFBA6FD8 ON bolt_taskforces (datecreated);
CREATE INDEX IDX_3F5BAC3EBE74E59A ON bolt_taskforces (datechanged);
CREATE INDEX IDX_3F5BAC3EA5131421 ON bolt_taskforces (datepublish);
CREATE INDEX IDX_3F5BAC3EB7805520 ON bolt_taskforces (datedepublish);
CREATE INDEX IDX_3F5BAC3E7B00651C ON bolt_taskforces (status);
ALTER TABLE bolt_projects
  ADD teaser_image LONGTEXT DEFAULT NULL COMMENT '(DC2Type:json_array)',
  ADD image LONGTEXT DEFAULT NULL COMMENT '(DC2Type:json_array)',
  ADD attachments LONGTEXT DEFAULT NULL COMMENT '(DC2Type:json_array)',
  ADD filelist_downloads VARCHAR(256) DEFAULT '',
  ADD hide_list TINYINT(1) DEFAULT '0' NOT NULL,
  ADD hide_related TINYINT(1) DEFAULT '0' NOT NULL,
  ADD support_navigation TINYINT(1) DEFAULT '0' NOT NULL,
  ADD contact_record LONGTEXT DEFAULT NULL,
  ADD contact_blurb LONGTEXT DEFAULT NULL,
  ADD template VARCHAR(256) DEFAULT '',
  CHANGE slug slug VARCHAR(128) NOT NULL,
  CHANGE status status VARCHAR(32) NOT NULL,
  CHANGE subsite subsite LONGTEXT DEFAULT NULL,
  CHANGE subtitle subtitle VARCHAR(256) DEFAULT '',
  CHANGE title title VARCHAR(256) DEFAULT '',
  CHANGE url url VARCHAR(256) DEFAULT '';
CREATE INDEX IDX_A2B1999989D9B62 ON bolt_projects (slug);
CREATE INDEX IDX_A2B1999AFBA6FD8 ON bolt_projects (datecreated);
CREATE INDEX IDX_A2B1999BE74E59A ON bolt_projects (datechanged);
CREATE INDEX IDX_A2B1999A5131421 ON bolt_projects (datepublish);
CREATE INDEX IDX_A2B1999B7805520 ON bolt_projects (datedepublish);
CREATE INDEX IDX_A2B19997B00651C ON bolt_projects (status);
ALTER TABLE bolt_events
  ADD calltoactiontext VARCHAR(256) DEFAULT '',
  ADD calltoactionlink VARCHAR(256) DEFAULT '',
  ADD attachments LONGTEXT DEFAULT NULL COMMENT '(DC2Type:json_array)',
  ADD filelist_downloads VARCHAR(256) DEFAULT '',
  ADD hide_related TINYINT(1) DEFAULT '0' NOT NULL,
  ADD support_navigation TINYINT(1) DEFAULT '0' NOT NULL,
  ADD contact_record LONGTEXT DEFAULT NULL,
  ADD contact_blurb LONGTEXT DEFAULT NULL,
  ADD template VARCHAR(256) DEFAULT '',
  CHANGE slug slug VARCHAR(128) NOT NULL,
  CHANGE status status VARCHAR(32) NOT NULL,
  CHANGE subsite subsite LONGTEXT DEFAULT NULL;
CREATE INDEX IDX_E6464385989D9B62 ON bolt_events (slug);
CREATE INDEX IDX_E6464385AFBA6FD8 ON bolt_events (datecreated);
CREATE INDEX IDX_E6464385BE74E59A ON bolt_events (datechanged);
CREATE INDEX IDX_E6464385A5131421 ON bolt_events (datepublish);
CREATE INDEX IDX_E6464385B7805520 ON bolt_events (datedepublish);
CREATE INDEX IDX_E64643857B00651C ON bolt_events (status);
ALTER TABLE bolt_jobs
  ADD image LONGTEXT DEFAULT NULL COMMENT '(DC2Type:json_array)',
  ADD attachments LONGTEXT DEFAULT NULL COMMENT '(DC2Type:json_array)',
  ADD hide_list TINYINT(1) DEFAULT '0' NOT NULL,
  ADD hide_related TINYINT(1) DEFAULT '0' NOT NULL,
  ADD support_navigation TINYINT(1) DEFAULT '0' NOT NULL,
  ADD contact_record LONGTEXT DEFAULT NULL,
  ADD contact_blurb LONGTEXT DEFAULT NULL,
  ADD template VARCHAR(256) DEFAULT '',
  CHANGE slug slug VARCHAR(128) NOT NULL,
  CHANGE status status VARCHAR(32) NOT NULL,
  CHANGE subsite subsite LONGTEXT DEFAULT NULL,
  CHANGE position position VARCHAR(256) DEFAULT '',
  CHANGE salary_eur salary_eur VARCHAR(256) DEFAULT '',
  CHANGE scale_eur scale_eur VARCHAR(256) DEFAULT '',
  CHANGE title filelist_downloads VARCHAR(256) DEFAULT '';
CREATE INDEX IDX_72668C1E989D9B62 ON bolt_jobs (slug);
CREATE INDEX IDX_72668C1EAFBA6FD8 ON bolt_jobs (datecreated);
CREATE INDEX IDX_72668C1EBE74E59A ON bolt_jobs (datechanged);
CREATE INDEX IDX_72668C1EA5131421 ON bolt_jobs (datepublish);
CREATE INDEX IDX_72668C1EB7805520 ON bolt_jobs (datedepublish);
CREATE INDEX IDX_72668C1E7B00651C ON bolt_jobs (status);
CREATE INDEX IDX_72668C1E9C709447 ON bolt_jobs (salary_eur);
CREATE INDEX IDX_72668C1E4357B737 ON bolt_jobs (scale_eur);
ALTER TABLE bolt_persons
  ADD email VARCHAR(256) DEFAULT '',
  ADD phone VARCHAR(256) DEFAULT '',
  ADD image LONGTEXT DEFAULT NULL COMMENT '(DC2Type:json_array)',
  ADD introduction LONGTEXT DEFAULT NULL,
  ADD speaker_teaser LONGTEXT DEFAULT NULL,
  ADD speaker_intro LONGTEXT DEFAULT NULL,
  ADD boardposition VARCHAR(256) DEFAULT '',
  ADD community LONGTEXT DEFAULT NULL,
  ADD community_role VARCHAR(256) DEFAULT '',
  ADD hide_related TINYINT(1) DEFAULT '0' NOT NULL,
  ADD support_navigation TINYINT(1) DEFAULT '0' NOT NULL,
  ADD contact_record LONGTEXT DEFAULT NULL,
  ADD contact_blurb LONGTEXT DEFAULT NULL,
  ADD template VARCHAR(256) DEFAULT '',
  CHANGE slug slug VARCHAR(128) NOT NULL,
  CHANGE status status VARCHAR(32) NOT NULL,
  CHANGE subsite subsite LONGTEXT DEFAULT NULL,
  CHANGE account_name account_name VARCHAR(256) DEFAULT '',
  CHANGE account_uid account_uid VARCHAR(256) DEFAULT '',
  CHANGE author_name author_name VARCHAR(256) DEFAULT '',
  CHANGE author_uid author_uid VARCHAR(256) DEFAULT '',
  CHANGE company company VARCHAR(256) DEFAULT '',
  CHANGE company_url company_url VARCHAR(256) DEFAULT '',
  CHANGE country country VARCHAR(256) DEFAULT '',
  CHANGE europeana_id europeana_id VARCHAR(256) DEFAULT '',
  CHANGE first_name first_name VARCHAR(256) DEFAULT '',
  CHANGE latime latime VARCHAR(256) DEFAULT '',
  CHANGE modified_name modified_name VARCHAR(256) DEFAULT '',
  CHANGE modified_uid modified_uid VARCHAR(256) DEFAULT '',
  CHANGE sector sector VARCHAR(256) DEFAULT '',
  CHANGE uid uid VARCHAR(256) DEFAULT '';
CREATE INDEX IDX_A932D9E6989D9B62 ON bolt_persons (slug);
CREATE INDEX IDX_A932D9E6AFBA6FD8 ON bolt_persons (datecreated);
CREATE INDEX IDX_A932D9E6BE74E59A ON bolt_persons (datechanged);
CREATE INDEX IDX_A932D9E6A5131421 ON bolt_persons (datepublish);
CREATE INDEX IDX_A932D9E6B7805520 ON bolt_persons (datedepublish);
CREATE INDEX IDX_A932D9E67B00651C ON bolt_persons (status);
ALTER TABLE bolt_locations
  ADD intro LONGTEXT DEFAULT NULL,
  ADD body LONGTEXT DEFAULT NULL,
  CHANGE slug slug VARCHAR(128) NOT NULL,
  CHANGE status status VARCHAR(32) NOT NULL,
  CHANGE title title VARCHAR(256) DEFAULT '';
CREATE INDEX IDX_4FD8BE01989D9B62 ON bolt_locations (slug);
CREATE INDEX IDX_4FD8BE01AFBA6FD8 ON bolt_locations (datecreated);
CREATE INDEX IDX_4FD8BE01BE74E59A ON bolt_locations (datechanged);
CREATE INDEX IDX_4FD8BE01A5131421 ON bolt_locations (datepublish);
CREATE INDEX IDX_4FD8BE01B7805520 ON bolt_locations (datedepublish);
CREATE INDEX IDX_4FD8BE017B00651C ON bolt_locations (status);
ALTER TABLE bolt_resources
  CHANGE slug slug VARCHAR(128) NOT NULL,
  CHANGE status status VARCHAR(32) NOT NULL,
  CHANGE subsite subsite LONGTEXT DEFAULT NULL;
CREATE INDEX IDX_B7581F15989D9B62 ON bolt_resources (slug);
CREATE INDEX IDX_B7581F15AFBA6FD8 ON bolt_resources (datecreated);
CREATE INDEX IDX_B7581F15BE74E59A ON bolt_resources (datechanged);
CREATE INDEX IDX_B7581F15A5131421 ON bolt_resources (datepublish);
CREATE INDEX IDX_B7581F15B7805520 ON bolt_resources (datedepublish);
CREATE INDEX IDX_B7581F157B00651C ON bolt_resources (status);
ALTER TABLE bolt_himeditions
  ADD hide_related TINYINT(1) DEFAULT '0' NOT NULL,
  ADD support_navigation TINYINT(1) DEFAULT '0' NOT NULL,
  ADD contact_record LONGTEXT DEFAULT NULL,
  ADD contact_blurb LONGTEXT DEFAULT NULL,
  ADD template VARCHAR(256) DEFAULT '',
  CHANGE slug slug VARCHAR(128) NOT NULL,
  CHANGE status status VARCHAR(32) NOT NULL,
  CHANGE subsite subsite LONGTEXT DEFAULT NULL;
CREATE INDEX IDX_4F231A1F989D9B62 ON bolt_himeditions (slug);
CREATE INDEX IDX_4F231A1FAFBA6FD8 ON bolt_himeditions (datecreated);
CREATE INDEX IDX_4F231A1FBE74E59A ON bolt_himeditions (datechanged);
CREATE INDEX IDX_4F231A1FA5131421 ON bolt_himeditions (datepublish);
CREATE INDEX IDX_4F231A1FB7805520 ON bolt_himeditions (datedepublish);
CREATE INDEX IDX_4F231A1F7B00651C ON bolt_himeditions (status);
ALTER TABLE bolt_himentries
  CHANGE slug slug VARCHAR(128) NOT NULL,
  CHANGE status status VARCHAR(32) NOT NULL,
  CHANGE subsite subsite LONGTEXT DEFAULT NULL;
CREATE INDEX IDX_76EB962C989D9B62 ON bolt_himentries (slug);
CREATE INDEX IDX_76EB962CAFBA6FD8 ON bolt_himentries (datecreated);
CREATE INDEX IDX_76EB962CBE74E59A ON bolt_himentries (datechanged);
CREATE INDEX IDX_76EB962CA5131421 ON bolt_himentries (datepublish);
CREATE INDEX IDX_76EB962CB7805520 ON bolt_himentries (datedepublish);
CREATE INDEX IDX_76EB962C7B00651C ON bolt_himentries (status);
ALTER TABLE bolt_himcomments
  CHANGE slug slug VARCHAR(128) NOT NULL,
  CHANGE status status VARCHAR(32) NOT NULL;
CREATE INDEX IDX_8613DFD3989D9B62 ON bolt_himcomments (slug);
CREATE INDEX IDX_8613DFD3AFBA6FD8 ON bolt_himcomments (datecreated);
CREATE INDEX IDX_8613DFD3BE74E59A ON bolt_himcomments (datechanged);
CREATE INDEX IDX_8613DFD3A5131421 ON bolt_himcomments (datepublish);
CREATE INDEX IDX_8613DFD3B7805520 ON bolt_himcomments (datedepublish);
CREATE INDEX IDX_8613DFD37B00651C ON bolt_himcomments (status);
ALTER TABLE bolt_himvotes
  CHANGE slug slug VARCHAR(128) NOT NULL,
  CHANGE status status VARCHAR(32) NOT NULL;
CREATE INDEX IDX_D79563A989D9B62 ON bolt_himvotes (slug);
CREATE INDEX IDX_D79563AAFBA6FD8 ON bolt_himvotes (datecreated);
CREATE INDEX IDX_D79563ABE74E59A ON bolt_himvotes (datechanged);
CREATE INDEX IDX_D79563AA5131421 ON bolt_himvotes (datepublish);
CREATE INDEX IDX_D79563AB7805520 ON bolt_himvotes (datedepublish);
CREATE INDEX IDX_D79563A7B00651C ON bolt_himvotes (status);