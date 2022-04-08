import MapKit
import UIKit
import CoreLocation


class MapScreen: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {

    @IBOutlet weak var mapView: MKMapView!
    
    let locationManager = CLLocationManager()
    let regionInMeters: Double = 10000
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.delegate = self
        checkLocationServices()
        
        
        
        //Pin initialisation
        
        let adress = Poi(title: "Vous êtes ici", coordinate: CLLocationCoordinate2D(latitude: 48.88734, longitude: 2.28724), info : "Lieu" )
        mapView.addAnnotation(adress)
        

    }
        
    
    // Location manager
    
        func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
            guard let location = locations.last else {
                return
            }; let region = MKCoordinateRegion.init(center: location.coordinate, latitudinalMeters: regionInMeters, longitudinalMeters: regionInMeters)
            mapView.setRegion(region, animated: true)
        }
        func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
            checkLocationAuthorization()
        }
        
    
    
    
    func setupLocationManager() {
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
    }
    
    
    func checkLocationServices() {
        if CLLocationManager.locationServicesEnabled(){
            setupLocationManager()
            checkLocationAuthorization()
        } else {
            //
        }
    }
    
    
    // center the map on the user location
    
    func centerViewOnUserLocation() {
        if let location = locationManager.location?.coordinate {
            let region = MKCoordinateRegion.init(center: location, latitudinalMeters: regionInMeters, longitudinalMeters: regionInMeters)
            mapView.setRegion(region, animated: true)
        }
    }
    
    
    
    // Asking for authorization/permissions
    
    func checkLocationAuthorization(){
        switch CLLocationManager.authorizationStatus(){
        case .authorizedWhenInUse:
            mapView.showsUserLocation = true
            centerViewOnUserLocation()
            locationManager.startUpdatingLocation()
            break
        case .denied:
            print("permissions refusées")
            break
        case .notDetermined:
            locationManager.requestWhenInUseAuthorization()
        case .restricted:
            print("Restrictions")
            break
        case .authorizedAlways:
            break
//
//        @unknown default:
//            <#fatalError()#>
        }
        
    }
    
    
    // Change the type of the map
    
    @IBAction func ChangeMapTypeButton(_ sender: UISegmentedControl) {
        
        switch sender.selectedSegmentIndex {
            
        case 0 : mapView.mapType = MKMapType.standard
        case 1 : mapView.mapType = .satellite
        case 2 : mapView.mapType = .hybrid
        default: break
        }
        
        
    }

    
}

