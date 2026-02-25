#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gsxml_store'
wp option delete 'gsxml_hp'
wp option delete 'gsxml_hf'
wp option delete 'gsxml_gp'
wp option delete 'gsxml_gf'
wp option delete 'gsxml_pri_freq'
wp option delete 'gsxml_cat'
wp option delete 'gsxml_tag'
wp option delete 'gsxml_last_ch'

