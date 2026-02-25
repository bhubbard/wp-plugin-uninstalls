-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('affinidi_options');
DELETE FROM wp_options WHERE option_name LIKE 'affinidi_user_redirect_to%';

