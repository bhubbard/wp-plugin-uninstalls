-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('epakaAdminToken', 'epakaShippingCourierMapping', 'epakaSession', 'epakaE', 'epakaP', 'epaka_plugin_version', 'epaka_updated_metadata', 'epaka_credits_agree');

