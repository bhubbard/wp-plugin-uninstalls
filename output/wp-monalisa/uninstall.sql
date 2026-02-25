-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpml-opts', 'wpml-linesperpage', 'wpml_excludes', 'wpml_use_smilies_backup');

