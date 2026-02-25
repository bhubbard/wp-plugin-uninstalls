-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('reputationgenius_comments_generic');
DELETE FROM wp_options WHERE option_name LIKE 'reputationgenius_comments_%';

