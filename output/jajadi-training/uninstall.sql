-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('usejajadicourse', 'usejajadiforms', 'usejajadicalendars', 'usejajadielearning', 'usejajadiwidget');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('jajadi_training_selectdate_field', 'jajadi_training');
DELETE FROM wp_usermeta WHERE meta_key IN ('jajadi_training_selectdate_field', 'jajadi_training');
DELETE FROM wp_termmeta WHERE meta_key IN ('jajadi_training_selectdate_field', 'jajadi_training');
DELETE FROM wp_commentmeta WHERE meta_key IN ('jajadi_training_selectdate_field', 'jajadi_training');

