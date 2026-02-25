#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'janolaw_user_id'
wp option delete 'janolaw_shop_id'
wp option delete 'janolaw_cache_path'
wp option delete 'janolaw_cache_clear'
wp option delete 'janolaw_language'
wp option delete 'janolaw_language_default'
wp option delete 'janolaw_agb_page'
wp option delete 'janolaw_imprint_page'
wp option delete 'janolaw_widerruf_page'
wp option delete 'janolaw_widerrufform_page'
wp option delete 'janolaw_privacy_page'
wp option delete 'janolaw_agb_page_id'
wp option delete 'janolaw_imprint_page_id'
wp option delete 'janolaw_widerruf_page_id'
wp option delete 'janolaw_widerrufform_page_id'
wp option delete 'janolaw_privacy_page_id'
wp option delete 'janolaw_version'
wp option delete 'janolaw_pdf_top'
wp option delete 'janolaw_pdf_bottom'
wp option delete 'janolaw_woomail_order_widerruf'
wp option delete 'janolaw_woomail_order_agb'
wp option delete 'janolaw_woomail_order_widerrufform'
wp option delete 'janolaw_woomail_order_datenschutz'
wp option delete 'janolaw_plugin_version'

