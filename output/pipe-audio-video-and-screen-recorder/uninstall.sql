-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%AccountHash';
DELETE FROM wp_options WHERE option_name LIKE '%EnvId';
DELETE FROM wp_options WHERE option_name LIKE '%PipeWebhookKey';

