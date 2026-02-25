-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tgei-semi-headless-field_status', 'tgei-semi-headless-field_redir_url', 'tgei-semi-headless-field_redir_url_404', 'tgei-semi-headless-field_allow_search', 'tgei-semi-headles-field_allow_homepage', 'tgei-semi-headless-field_allow_homepage');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tgei-semi-headless-allow');
DELETE FROM wp_usermeta WHERE meta_key IN ('tgei-semi-headless-allow');
DELETE FROM wp_termmeta WHERE meta_key IN ('tgei-semi-headless-allow');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tgei-semi-headless-allow');

