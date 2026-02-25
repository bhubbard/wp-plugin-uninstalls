-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vbean_errormailer_useslack', 'vbean_slack_hooker_setupvalid', 'vbean_errormailer_fatals', 'vbean_errormailer_warnings', 'vbean_errormailer_notices', 'vbean_errormailer_parse', 'vbean_errormailer_db_version', 'vbean_errormailer_lasterror', 'vbean_errormailer_lasterrorcount', 'vbean_errormailer_lasterrortime', 'vbean_errormailer_lasterrorstart', 'vbean_errormailer_subject', 'vbean_errormailer_exemptions', 'vbean_errormailer_excludetypes', 'vbean_errormailer_recipients', 'vbean_errormailer_slackicon', 'vbean_errormailer_slackchannel', 'vbean_errormailer_slackfrom');

