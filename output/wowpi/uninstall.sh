#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wowpi_options'
wp option delete 'wowpi_characters'
wp option delete 'wowpi_guilds_progress'
wp option delete 'wowpi_guilds'
wp option delete 'wowpi_character_races'
wp option delete 'wowpi_character_classes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wowpi_artifact_weapons_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wowpi_spells_%'"
wp option delete 'wowpi_realms_data'
wp option delete 'wowpi_character_achievements'
wp option delete 'wowpi_guild_achievements'
wp option delete 'wowpi_progression_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wowpi_items_%'"
wp option delete 'wowpi_realms'
wp option delete 'styling'

