#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fa_enqueue_fa7_fe'
wp option delete 'fa_enqueue_fa6_fe'
wp option delete 'fa_enqueue_fe'
wp option delete 'fa_enqueue_kit'
wp option delete 'fa_enqueue_kit_fe'
wp option delete 'fa_enqueue_local_fe'
wp option delete 'fa_external_css'
wp option delete 'fa_enqueue_fa_source'
wp option delete 'fa_enqueue_fa7_be'
wp option delete 'fa_enqueue_fa6_be'
wp option delete 'fa_enqueue_be'
wp option delete 'fa_enqueue_kit_be'
wp option delete 'fa_enqueue_local_be'
wp option delete 'fa_enqueue_fa6_setup'
wp option delete 'fa_enqueue_fa6_source'
wp option delete 'fa_enqueue_fa7_source'

