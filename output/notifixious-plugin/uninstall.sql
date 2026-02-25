-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('notifixiousSourceId', 'notifixiousWidgetTitle', 'notifixiousRegistered', 'notifixiousTagName', 'notifixiousTagContent', 'notifixiousClaimed', 'notifixiousLoginValid', 'notifixiousPassword', 'notifixiousLogin', 'notifixiouspassword', 'notifixiouslogin');

