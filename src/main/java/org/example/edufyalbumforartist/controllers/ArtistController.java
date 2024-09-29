package org.example.edufyalbumforartist.controllers;


import org.example.edufyalbumforartist.entities.Album;
import org.example.edufyalbumforartist.entities.Artist;
import org.example.edufyalbumforartist.services.ArtistService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Set;

@RestController
@RequestMapping("/artist")
public class ArtistController {

    @Autowired
    private ArtistService artistService;
    @GetMapping("/albums/{artistId}")
    public ResponseEntity<Set<Album>> getAlbumsByArtist(@PathVariable Long artistId) {
        return ResponseEntity.ok(artistService.getAlbumsByArtist(artistId));
    }

}
