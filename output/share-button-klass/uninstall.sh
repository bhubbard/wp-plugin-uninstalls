#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tt_klass_width'
wp option delete 'tt_klass_height'
wp option delete 'tt_klass_btntype'
wp option delete 'tt_klass_show_at_top'
wp option delete 'tt_klass_show_at_bottom'
wp option delete 'tt_klass_show_on_page'
wp option delete 'tt_klass_show_on_post'
wp option delete 'tt_klass_margin_top'
wp option delete 'tt_klass_margin_bottom'
wp option delete 'tt_klass_margin_left'
wp option delete 'tt_klass_margin_right'

