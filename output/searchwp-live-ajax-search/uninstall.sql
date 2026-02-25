-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('classic-editor-replace', 'searchwp_forms', 'searchwp_live_search_version', 'searchwp_live_search_version_upgraded_from', 'searchwp_live_search_last_update', 'searchwp_live_search_activation_redirect', 'searchwp_license', 'searchwp_live_search_admin_notices', 'searchwp_live_search_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE '%forms';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('searchwp_admin_form_embed_wizard', 'searchwp_live_search_admin_notices');
DELETE FROM wp_usermeta WHERE meta_key IN ('searchwp_admin_form_embed_wizard', 'searchwp_live_search_admin_notices');
DELETE FROM wp_termmeta WHERE meta_key IN ('searchwp_admin_form_embed_wizard', 'searchwp_live_search_admin_notices');
DELETE FROM wp_commentmeta WHERE meta_key IN ('searchwp_admin_form_embed_wizard', 'searchwp_live_search_admin_notices');

