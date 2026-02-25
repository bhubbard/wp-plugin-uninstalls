-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ichigen_san_enabling', 'ichigen_san_basic_user', 'ichigen_san_basic_pass', 'ichigen-san-convert', 'ichigen-san-initialization');

