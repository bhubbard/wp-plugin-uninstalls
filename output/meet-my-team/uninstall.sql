-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_form_rendered';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', 'mmt_designation', 'mmt_email', 'mmt_bio_picture', 'mmt_biography', 'mmt_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', 'mmt_designation', 'mmt_email', 'mmt_bio_picture', 'mmt_biography', 'mmt_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', 'mmt_designation', 'mmt_email', 'mmt_bio_picture', 'mmt_biography', 'mmt_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', 'mmt_designation', 'mmt_email', 'mmt_bio_picture', 'mmt_biography', 'mmt_url');

