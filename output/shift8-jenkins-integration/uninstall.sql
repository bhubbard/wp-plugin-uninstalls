-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('shift8_jenkins_user', 'shift8_jenkins_api', 'shift8_jenkins_url', 'shift8_jenkins_db_version');

