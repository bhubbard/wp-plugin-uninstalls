-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lnkbio_id', 'lnkbio_secret', 'lnkbio_category', 'lnkbio_group');

