#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_alltobill_title'
wp option delete 'woocommerce_alltobill_instance'
wp option delete 'woocommerce_alltobill_sid'
wp option delete 'woocommerce_alltobill_prefix'
wp option delete 'woocommerce_alltobill_logos'
wp option delete 'woocommerce_alltobill_settings'

