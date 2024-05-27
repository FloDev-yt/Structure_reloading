# Natural Structure reloading

[*(Version française)*](https://github.com/FloDev-yt/Structure_reloading/tree/MC-1.20.2_FR)

Thanks to this datapack, all natural structures in Minecraft (Java Edition) automatically regenerate once for each player.
| looted Village | Restored Village |
| --- | --- |
| ![Looted Village](https://github.com/FloDev-yt/Structure_reloading/blob/assets/village_pillé.png) | ![Restored Village](https://github.com/FloDev-yt/Structure_reloading/blob/assets/village_restaure.png) |

Here’s how it works in detail:

1. **Chunk Detection and Scanning:**
   - The datapack starts by scanning your world, replacing bedrock with barrier blocks at the corresponding layer in the Overworld or Nether. This allows each chunk to be marked once, preventing unnecessary rescanning.
   - Each chunk is analyzed to detect the presence of natural structures such as villages, temples, dungeons, etc.

2. **Structure Identification:**
   - To identify if a structure exists in a chunk, the datapack starts by locating blocks unique to structures.
   - From these blocks, the datapack delineates an initial 16x16x16 block area centered on the chunk containing them.

Example for a chunk with two cubes made visible:

<img src="https://github.com/FloDev-yt/Structure_reloading/blob/assets/chunck.png" width="389" height="496"/>

3. **Zone Expansion:**
   - This initial area expands into additional 16x16x16 block cubes to encompass the entire natural structure.

     Example of a village with all cubes made visible:

   ![Village Structure Representation](https://github.com/FloDev-yt/Structure_reloading/blob/assets/village_all_portion.png)

   - Once the structure is fully identified, the datapack copies all blocks and entities of this structure into a dedicated backup dimension. For example, blocks from the Overworld will be copied into a dimension named "overworld_copy."

4. **Structure Regeneration:**
   - Each time a new player approaches a natural structure for the first time, the datapack checks if that structure has already regenerated for the player.
   - If not, the datapack restores the structure from the backup copy, allowing the player to discover the structure as if it were new.

5. **Regeneration Delay:**
   - After a player has explored a regenerated structure, a 5-minute delay is imposed before another player can trigger a new regeneration of the same structure.
   - This delay can be adjusted with the following command:
     ```
     /scoreboard players set sr_time_before_reload_structure gamerule 300
     ```
     where 300 seconds equals 5 minutes.

6. **Precautions:**
   - It is important not to build too close to natural structures as all surrounding blocks will be reset during regeneration.
   - To avoid losing personal constructions, ensure to maintain a certain distance from natural structures.

In summary, this datapack enhances the multiplayer experience by allowing each player to discover and explore natural structures as if they were the first to find them, while enabling players to develop in untouched areas.

### Compatibility with Other Mods/Datapacks
  - This datapack is designed to be compatible with other mods or datapacks that modify the structures of the three main worlds. However, if a mod adds new blocks outside of natural structures, it may cause problems during the regeneration of structures.

## Download

Download the datapack from the following link: 

- [**For Minecraft 1.20.2 and later (EN)**](https://github.com/FloDev-yt/Structure_reloading//releases/tag/MC-1.20.2_EN).

### Installation

[*Tutorials/Installing a Data Pack*](https://minecraft.wiki/w/Tutorials/Installing_a_data_pack)

**Server Configuration:**
   - If you are installing this datapack on a server, ensure to enable command blocks in the server options. To do this, open the `server.properties` file and modify the following line:
     ```properties
     enable-command-block=true
     ```

**Installation before World Generation:**
   - It is recommended to install this datapack before world generation to ensure it functions properly.

**Installation in an Already Generated World:**
   - If you need to install the datapack in an already generated world, download this zip file: [*dimensions.zip*](https://github.com/FloDev-yt/Structure_reloading/releases/download/MC-1.20.2_EN/dimensions.zip).
   - Extract the archive to the root of your Minecraft save. This will add the three empty dimensions needed for the datapack to function.

## A Word About Me

Passionate about Minecraft since the very beginning, I have always felt that something was missing to enhance the multiplayer aspect. I try to add this through my developments and datapacks.

**Useful Links:**
- [My Tipeee](https://fr.tipeee.com/flo-dev)
- [My Other Developments](https://github.com/FloDev-yt?tab=repositories)

You can also write to me at this email address: [flo.dev.yt@gmail.com](flo.dev.yt@gmail.com) to report a problem or provide any feedback.