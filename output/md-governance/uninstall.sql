-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('md_governance_disable_all_blocks');
DELETE FROM wp_options WHERE option_name LIKE 'md_governance_block_%';

