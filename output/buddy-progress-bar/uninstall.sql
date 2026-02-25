-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bppp-auto-embed', 'bppp-extra-widget-embed', 'bppp-extra-directory-embed', 'bppp-profile-title-embed', 'bppp-login-title-embed', 'bppp-directory-title-embed', 'bppp-completed-title-embed', 'bppp-award-embed', 'bppp-empty-profile-embed', 'bppp-empty-message-embed', 'bppp-empty-login-embed', 'bppp-points-shares');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_progress_bar_percent_level');
DELETE FROM wp_usermeta WHERE meta_key IN ('_progress_bar_percent_level');
DELETE FROM wp_termmeta WHERE meta_key IN ('_progress_bar_percent_level');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_progress_bar_percent_level');

