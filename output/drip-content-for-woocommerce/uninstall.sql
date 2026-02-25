-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dripcofo_upgrade_url', 'dripcofo_docs_url');

