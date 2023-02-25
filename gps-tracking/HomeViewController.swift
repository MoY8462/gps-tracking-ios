//
//  HomeViewController.swift
//  gps-tracking
//
//  Created by Moises Sancheza on 22/02/23.
//
import GoogleMaps
import UIKit

enum ProviderType: String {
    case basic
}

class HomeViewController: UIViewController, GMSMapViewDelegate {

    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var providerLabel: UILabel!
    @IBOutlet var closeSessionButton: UIButton!
    private var mapView: GMSMapView!
    var email: String?
    override func loadView() {

        // Load the map at set latitude/longitude and zoom level
        let camera:GMSCameraPosition = GMSCameraPosition.camera(withLatitude: 19.3898, longitude: -99.178, zoom: 6.0)

        mapView = GMSMapView(frame: .zero, camera: camera)
        mapView.settings.compassButton = true
        mapView.settings.myLocationButton = true
        mapView.settings.scrollGestures = true
          mapView.settings.zoomGestures = true
        self.view = mapView
        mapView.delegate = self
      }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Mapa"
        // Do any additional setup after loading the view.
        let mapCenter = CLLocationCoordinate2DMake(19.3898,-99.178)
        let marker = GMSMarker(position: mapCenter)
        marker.icon = UIImage(named: "custom_pin.png")
        marker.title = "Center CDMX"
        marker.map = mapView
        
        
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
