#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mf_sid'
wp option delete 'mf_redirect'
wp option delete 'mf_sms'
wp option delete 'mf_cname'
wp option delete 'mf_iphone'

