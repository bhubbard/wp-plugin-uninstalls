-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rg_gforms_currency');
DELETE FROM wp_options WHERE option_name LIKE '%_activated';
DELETE FROM wp_options WHERE option_name LIKE '%_typewheel_notices';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_typewheel_notices';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_typewheel_notices';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_typewheel_notices';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_typewheel_notices';

