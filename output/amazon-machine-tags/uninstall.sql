-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aws_access_key_id', 'aws_access_key_secret', 'amtap_headline', 'amtap_target', 'amtap_rating', 'amtap_associate_default', 'amtap_ip2country', 'amtap_default_tags', 'amtap_xml_maxage', 'amtap_item_response_group', 'amtap_donation', 'amtap_debug', 'amtap_key_status');
DELETE FROM wp_options WHERE option_name LIKE 'amtap_associate_id_%';

