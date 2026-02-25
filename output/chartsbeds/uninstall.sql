-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('charts_key', 'rev_per_page', 'rec_amt', 'thanks_on', 'gravataroff', 'rev_url', 'answers_off', 'bootstrap_on', 'dark_on', 'cbsnippet_propname', 'cbsnippet_description', 'cbsnippet_country', 'cbsnippet_city', 'cbsnippet_street', 'cbsnippet_postal', 'cbsnippet_phone', 'cbsnippet_price', 'cbsnippet_logo');

