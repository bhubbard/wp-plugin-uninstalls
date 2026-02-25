-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vikmailsmtp_host', 'vikmailsmtp_skipwizard', 'vikmailsmtp_port', 'vikmailsmtp_security', 'vikmailsmtp_auth', 'vikmailsmtp_sender', 'vikmailsmtp_user', 'vikmailsmtp_pass', 'vikmailsmtp_logging', 'vikmailsmtp_logs');

