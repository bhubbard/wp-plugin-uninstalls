-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rdContactOverride', 'rdContactName', 'rdContactPhone', 'rdContactMobile', 'rdContactFax', 'rdContactEmail', 'rdContactStreet', 'rdContactCity', 'rdContactState', 'rdContactZip', 'rdShowContactName', 'rdShowContactPhone', 'rdShowContactMobile', 'rdShowContactFax', 'rdShowContactEmail', 'rdShowContactAddress');

