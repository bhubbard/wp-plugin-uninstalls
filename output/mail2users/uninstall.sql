-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eregards', 'etemplate', 'esubject', 'elength', 'mail_from');
DELETE FROM wp_options WHERE option_name LIKE 'm2u_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mail2users');
DELETE FROM wp_usermeta WHERE meta_key IN ('mail2users');
DELETE FROM wp_termmeta WHERE meta_key IN ('mail2users');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mail2users');

