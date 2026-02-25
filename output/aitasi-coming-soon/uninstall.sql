-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aitasi_subscriber_list', 'aitasi_options', 'cs-framework-transient', 'cs-metabox-transient');

