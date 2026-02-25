#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'security_headers_hsts_time'
wp option delete 'security_headers_hsts_subdomains'
wp option delete 'security_headers_hsts_preload'
wp option delete 'security_headers_nosniff'
wp option delete 'security_headers_xss'
wp option delete 'security_headers_frame'
wp option delete 'security_headers_hpkp_key1'
wp option delete 'security_headers_hpkp_key2'
wp option delete 'security_headers_hpkp_key3'
wp option delete 'security_headers_hpkp_time'
wp option delete 'security_headers_hpkp_subdomains'
wp option delete 'security_headers_hpkp_uri'
wp option delete 'security_headers_referrer'
wp option delete 'security_headers_ect_time'
wp option delete 'security_headers_ect_enforce'
wp option delete 'security_headers_ect_uri'

