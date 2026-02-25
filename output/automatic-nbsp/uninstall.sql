-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dgwt_automatic_nbsp', 'dg_automatic_nbsp', 'dgwt_nbsp_version');

