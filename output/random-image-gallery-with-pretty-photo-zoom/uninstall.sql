-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rigwppz_dir', 'rigwppz_dir1', 'rigwppz_dir2', 'rigwppz_dir3', 'rigwppz_dir4', 'rigwppz_dir5', 'rigwppz_width', 'rigwppz_title', 'rigwppz_theme', 'rigwppz_title_yes');

