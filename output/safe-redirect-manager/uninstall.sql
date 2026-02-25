-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_srm_redirects_graph');
DELETE FROM wp_options WHERE option_name LIKE '_srm_redirects_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_redirect_rule_from', '_redirect_rule_to', '_redirect_rule_status_code', '_force_https', '_redirect_rule_from_regex', '_redirect_rule_message', '_redirect_rule_notes');
DELETE FROM wp_usermeta WHERE meta_key IN ('_redirect_rule_from', '_redirect_rule_to', '_redirect_rule_status_code', '_force_https', '_redirect_rule_from_regex', '_redirect_rule_message', '_redirect_rule_notes');
DELETE FROM wp_termmeta WHERE meta_key IN ('_redirect_rule_from', '_redirect_rule_to', '_redirect_rule_status_code', '_force_https', '_redirect_rule_from_regex', '_redirect_rule_message', '_redirect_rule_notes');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_redirect_rule_from', '_redirect_rule_to', '_redirect_rule_status_code', '_force_https', '_redirect_rule_from_regex', '_redirect_rule_message', '_redirect_rule_notes');

