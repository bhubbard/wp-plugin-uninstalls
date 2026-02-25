-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nfa_changelog_data');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_nfa_form_name', '_nfa_form_data', '_nfa_form_status', '_nfa_form_ip', '_nfa_form_ua', '_nfa_form_page', 'nfa_dismissed_welcome');
DELETE FROM wp_usermeta WHERE meta_key IN ('_nfa_form_name', '_nfa_form_data', '_nfa_form_status', '_nfa_form_ip', '_nfa_form_ua', '_nfa_form_page', 'nfa_dismissed_welcome');
DELETE FROM wp_termmeta WHERE meta_key IN ('_nfa_form_name', '_nfa_form_data', '_nfa_form_status', '_nfa_form_ip', '_nfa_form_ua', '_nfa_form_page', 'nfa_dismissed_welcome');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_nfa_form_name', '_nfa_form_data', '_nfa_form_status', '_nfa_form_ip', '_nfa_form_ua', '_nfa_form_page', 'nfa_dismissed_welcome');

