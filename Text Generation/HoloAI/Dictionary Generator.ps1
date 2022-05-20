# This is kind-of intended as a template generator, you will most likely need to tweak the generated text to add what you want.
Write-Host "Try to keep descriptions as simple as possible."
$cha_itm_loc=Read-Host -Prompt "Are you writing a dictionary entry for a character, item, or a location in the world (type 'character', 'item', or 'location' without quotations. Quotations around examples means it affects the generation.)"

if ($cha_itm_loc -eq 'character') {
    $cha_name=Read-Host -Prompt "Enter the name of the character"
    $cha_gender=Read-Host -Prompt "Enter the gender of $cha_name ('male', 'female', or 'genderless' (robot))"
        if ($cha_gender -eq 'male') {
            $cha_gender_spec="He"
        }
        if ($cha_gender -eq 'female') {
            $cha_gender_spec="She"
        }
        if ($cha_gender -eq 'genderless') {
            $cha_gender_spec="They"
        }
    $cha_species=Read-Host -Prompt "Enter the species name for $cha_name"
        if ($cha_species -ne 'human') {
            $cha_anthro=Read-Host -Prompt "Is $cha_name anthropomorphic ('yes', or 'no'.)"
        }
    $cha_skin_fur=Read-Host -Prompt "Does $cha_name have 'skin' or 'fur'"
    $cha_color=Read-Host -Prompt "Enter the $cha_skin_fur color of $cha_name"
    $cha_age=Read-Host -Prompt "Enter the age of $cha_name ('toddler', 'child', 'adolescent' (or 'teenager'), 'adult', or 'elder', or 'non-applicable' (robot))"
    $cha_height=Read-Host -Prompt "Enter the height of the character ('tiny', 'short', 'average' (for the species), 'tall', or 'giant')"
    $cha_weight=Read-Host -Prompt "Enter the weight of the character ('light', 'average', or 'heavy')"
    $cha_hair_color=Read-Host -Prompt "Enter the hair color of the character" # Ignore if setting fur.
        #$cha_traits=Read-Host -Prompt "Enter the numeric age of the character"
        #$cha_likes
        #$cha_dislikes=Read-Host -Prompt "Enter the numeric age of the character"
        #$cha_fears=Read-Host -Prompt "Enter the things the character is afraid of"
        #$cha_gender_pref=Read-Host -Prompt "Enter the gender the character prefers for a love interest ('male', 'female', or 'both')"
            #$cha_clothing=Read-Host -Prompt "Enter the gender the character prefers for a love interest ('male', 'female', or 'both')"
    New-Item "$cha_name (Character).txt" -ItemType File -Force
    Write-Host "$cha_name is a $cha_age $cha_gender $cha_species, and has $cha_color $cha_skin_fur, along with $cha_hair_color hair. $cha_gender_spec is $cha_height in height, and $cha_weight in weight."
}

if ($cha_itm_loc -eq 'item') {
    $item_name=Read-Host -Prompt "Enter the name of the item"
    $item_appearance=Read-Host -Prompt "Describe the appearance of the $item_name (example: the mushroom has a tan bottom, and a green top with polka-dots.)"
    $item_properties=Read-Host -Prompt "Describe the properties of the $item_name (example: if you eat the green mushroom, it grants you an extra life.)"
}

if ($cha_itm_loc -eq 'location') {
    $loc_name=Read-Host -Prompt "Enter the name of the location"
}

pause
