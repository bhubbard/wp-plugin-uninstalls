-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('chesser_autoreplace_active', 'chesser_autoreplace_rules', 'chesser_autoreplace_use_mb');

