//
//  Mapa.swift
//  alura-viagens
//
//  Created by Abraao Barros on 17/12/21.
//

import SwiftUI
import MapKit

struct Mapa: UIViewRepresentable {
    var coordenada: CLLocationCoordinate2D
    
    func makeUIView(context: Context) ->  MKMapView {
        return MKMapView(frame: .zero)
    }
   
    func updateUIView(_ uiView: MKMapView, context: Context) {
      
        let span = MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        let region = MKCoordinateRegion(center: coordenada, span: span)
        uiView.setRegion(region, animated: true)
    }
  
}

struct Mapa_Previews: PreviewProvider {
    static var previews: some View {
        Mapa(coordenada: viagens[0].localizacao)
    }
}
