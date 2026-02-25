#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'charts_key'
wp option delete 'rev_per_page'
wp option delete 'rec_amt'
wp option delete 'thanks_on'
wp option delete 'gravataroff'
wp option delete 'rev_url'
wp option delete 'answers_off'
wp option delete 'bootstrap_on'
wp option delete 'dark_on'
wp option delete 'cbsnippet_propname'
wp option delete 'cbsnippet_description'
wp option delete 'cbsnippet_country'
wp option delete 'cbsnippet_city'
wp option delete 'cbsnippet_street'
wp option delete 'cbsnippet_postal'
wp option delete 'cbsnippet_phone'
wp option delete 'cbsnippet_price'
wp option delete 'cbsnippet_logo'

