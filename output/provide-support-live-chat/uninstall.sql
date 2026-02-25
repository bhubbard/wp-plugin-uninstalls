-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ProvideSupport plugin version', 'f7settings', 'f7code', 'f7accountName', 'f7accountHash', 'f7hiddencode', 'f7jsFile');

