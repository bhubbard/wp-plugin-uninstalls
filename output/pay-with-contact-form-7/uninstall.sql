-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpcms_cf7pp_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpcmscf7_enable', 'wpcmscf7_name', 'wpcmscf7_price', 'wpcmscf7_id', 'wpcmscf7_email');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpcmscf7_enable', 'wpcmscf7_name', 'wpcmscf7_price', 'wpcmscf7_id', 'wpcmscf7_email');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpcmscf7_enable', 'wpcmscf7_name', 'wpcmscf7_price', 'wpcmscf7_id', 'wpcmscf7_email');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpcmscf7_enable', 'wpcmscf7_name', 'wpcmscf7_price', 'wpcmscf7_id', 'wpcmscf7_email');

