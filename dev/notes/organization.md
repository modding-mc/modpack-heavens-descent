# Organization

## Plan

Create GitHub organization & create a clean, publishable pack for Fabric 1.20.1.

For modularity split everything into small repositories, which depend on each other using Git submodules.

Large assets are separated into distinct repos, possibly with git LFS.

## Main repo structure

```
modpacks/
	minecraft/
		config/
		hd_assets/
		hd_data/
		scripts/
		kubejs/
		journeymap/ (only settings)
		mods/.index
		resourcepacks/.index
		shaders/.index
		options.txt
		icon.png
	instance.cfg
	mmc-pack.json
	.packignore
dev/
	notes/
docs/
	releases/
README.md
```

## Repositories

Main repo:

- `modpack-heavens-descent`

Submodules:

- `resourcepack-emissive-vanilla-ores`
- `resourcepack-emissive-stay-true-ores`
- `resourcepack-emissive-spectrum`
- `resourcepack-emissive-betterex`
- `resourcepack-emissive-lum`
- `resourcepack-emissive-collection`
- `resourcepack-transparent-gui`
- `resourcepack-medieval-music-plus`
- `resourcepack-subtle-enchantment-glint`
- `datapack-hd-music-discs` (ArtistiCraft license: CC, allows redistribution)
- `datapack-hd-loading-background`
- `datapack-hd-immersive-melodies`
- `datapack-hd-immersive-painting`
- `shader-hd-bliss` (Bliss license: custom, allows redistribution)
- `shader-hd-mellow` (Mellow license: MIT, allows redistribution)

Tools:

- `tool-optifine-to-labpbr-converter`
- `tool-hd-test-worlds`

## Documentation

Use `mkdocs` in the main repo. We need a table of mods sortable / searchable by tags.

Minor repositories can live with regular markdown. 

## Dealing with ARR patches

**Possible solution:** 

During the game's first launch:

1. Have a mod extract specific files from known location and put them into packs inside `rr_assets_temp/`
2. Take patches from `rr_assets_patches` and copy them with overwrite into the`rr_assets_temp/`, this allows us to overwrite files where edits are needed
3. Load resourcepacks from `rr_assets_temp/` with a prefix `[generated]`. Original packs should be unloaded and have prefix `[source]`. 

**Generated packs:**

- `custom-armor-models`
- `custom-sky`

## Curseforge instance structure

```
modpacks/
	overrides/
		config/
		hd_resourcepacks/
		hd_datapacks/
		scripts/
		kubejs/
	manifest.json
	modlist.html
```