-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('switch_jq_version_version', 'switch_jq_version_cdn', 'switch_jq_version_customise_url');

