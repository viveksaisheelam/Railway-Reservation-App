import java.awt.*;
import java.sql.*;
import javax.swing.*;

/**
 *
 * @author VIVEK SAI
 */
public abstract class RailwayReservationApp1 {
    /**
     * @param args
     */
    /**
     * @param args
     */
    public static void main(String[] args) {
            JFrame frame = new JFrame("AVP Railway Reservation Services");
            frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
            // int screenWidth = 1920;
            // int screenHeight = 1080;
            // int initialWidth = (int) (screenWidth * 0.8);
            // int initialHeight = (int) (screenHeight * 0.8);
            frame.setResizable(true);
            frame.setSize(850,400);
            frame.setLayout(new BorderLayout());
            frame.setVisible(true);
            ImageIcon logoIcon = new ImageIcon("logo.png");
            JLabel logoLabel = new JLabel(logoIcon);
            frame.add(logoLabel, BorderLayout.NORTH);
            // ActionListener actionListener
            JLabel titleLabel = new JLabel("AVP Railway Reservation");
            titleLabel.setFont(new Font("Arial", Font.BOLD, 24));
            titleLabel.setHorizontalAlignment(JLabel.CENTER);
            titleLabel.setVisible(true);
            frame.add(titleLabel, BorderLayout.NORTH);
            JPanel inputPanel = new JPanel(new GridLayout(10,5));
            inputPanel.setBackground(Color.decode("#D4E2D4"));
            GridBagConstraints gbc = new GridBagConstraints();
            gbc.insets = new Insets(10, 10, 10, 10);
            JLabel startLabel = new JLabel("Start From:");
            gbc.gridx = 4;
            gbc.gridy = 4;
            gbc.gridheight=4;
            gbc.gridwidth=4;
            inputPanel.add(startLabel, gbc);
            JTextField startTextField = new JTextField(20);
            startTextField.setForeground(Color.GRAY);
            // startTextField.setText("Enter starting station");
            gbc.gridx = 0;
            gbc.gridy=0;
            inputPanel.add(startTextField, gbc);
            frame.add(inputPanel,BorderLayout.WEST);
            JLabel toLabel = new JLabel("To Address:");
            gbc.gridx = 0;
            gbc.gridy = 1;
            inputPanel.add(toLabel, gbc);
            frame.add(inputPanel);
            JTextField toTextField = new JTextField(20);
            toTextField.setForeground(Color.GRAY);
            // toTextField.setText("Enter ending station");
            gbc.gridx = 1;
            inputPanel.add(toTextField, gbc);
            frame.add(inputPanel);
            JLabel dateLabel = new JLabel("Select Date:");
            gbc.gridx = 0;
            gbc.gridy = 2;
            inputPanel.add(dateLabel, gbc);
            JTextField dateTextField = new JTextField(10);
            dateTextField.setForeground(Color.GRAY);
            dateTextField.setText("dd-mon-yyyy");
            gbc.gridx = 1;
            inputPanel.add(dateTextField, gbc);
            JLabel passengerLabel = new JLabel("Passengers:");
            gbc.gridx = 0;
            gbc.gridy = 3;
            inputPanel.add(passengerLabel, gbc);
            JSpinner passengerSpinner = new JSpinner();
            gbc.gridx = 6;
            gbc.gridy=3;
            inputPanel.add(passengerSpinner, gbc);
            JButton searchButton = new JButton("Search Trains");
            searchButton.setBackground(Color.decode("#FFCACC"));
            gbc.gridx = 0;
            gbc.gridy = 4;
            gbc.gridwidth = 2;
            inputPanel.add(searchButton, gbc);
            frame.add(inputPanel, BorderLayout.WEST);
            JTextArea resultTextArea = new JTextArea("\t\t\tAVAILABLE TRAINS!!!");
            resultTextArea.setText("\t\tENTER THE CITY NAME CORRECTLY AS IT IS BELOW::\n"+"-------+---------------------+\r\n" + //
                    "| scode | sname               |\r\n" + //
                    "+-------+---------------------+\r\n" + //
                    "| AKE--------- Akanapet            \r\n" + //
                    "| AKP--------Anakapalle          \r\n" + //
                    "| AKR-----------Akolner             \r\n" + //
                    "| ALER-------------Aler                |\r\n" + //
                    "| ANG--------Ahmadnagar          \r\n" + //
                    "| ANK-------------Ankai               \r\n" + //
                    "| ANV---------Annavaram           \r\n" + //
                    "| ASAF----Asifabad Road       \r\n" + //
                    "| AWB--------Aurangabad          \r\n" + //
                    "| BAP-----------Belapur             \r\n" + //
                    "| BDU----------Badnapur            \r\n" + //
                    "| BG------------Bhongir             \r\n" + //
                    "| BGSF ---Bisugirsharif       \r\n" + //
                    "| BLSA------------Bolsa               \r\n" + //
                    "| BMO ----------Bolarum             \r\n" + //
                    "| BN ---------Bibinagar           \r\n" + //
                    "| BPA--------Belampalli          \r\n" + //
                    "| BPQ--------Balharshah          \r\n" + //
                    "| BSX ------------Basar               \r\n" + //
                    "| BWD ---------Belvandi            \r\n" + //
                    "| BZA--------Vijayawada \r\n" + //
                    "| CIT ----------Chitali             \r\n" + //
                    "| CRU ----------Chudawa             \r\n" + //
                    "| CSTM ----------Mumbai         \r\n" + //
                    "| CTH ------ Chikalthan          \r\n" + //
                    "| DAB --------Dharmabad           \r\n" + //
                    "| DD ------------ Daund       \r\n" + //
                    "| DLB--------Daulatabad          \r\n" + //
                    "| DR ------------ Dadar               \r\n" + //
                    "| DVD ----------Duvvada             \r\n" + //
                    "| DVL-----------Devlali             \r\n" + //
                    "| EE ------------ Eluru               \r\n" + //
                    "| GNP --------- Ghanpur             \r\n" + //
                    "| HDP ---------Hadapsar            \r\n" + //
                    "| HSP--Hasanparthi Road           \r\n" + //
                    "| IGP----------Igatpuri            \r\n" + //
                    "| J --------------Jalna               \r\n" + //
                    "| JKM ---------Jankampet   \r\n" + //
                    "| JMKT---------Jamikunta           \r\n" + //
                    "| KAJG--------Karanjgaon          \r\n" + //
                    "| KDG----------- Kedgaon             \r\n" + //
                    "| KDTN----------Kadethan            \r\n" + //
                    "| KEK-----------Karkheli            \r\n" + //
                    "| KMC ---------Kamareddi           \r\n" + //
                    "| KMT------------Khammam             \r\n" + //
                    "| KMV-------------Karmad              \r\n" + //
                    "| KNGN---------Kanhegaon           \r\n" + //
                    "| KODI--------------Kodi                \r\n" + //
                    "| KOLR------------Kolnur              \r\n" + //
                    "| KPG----------Kopargaon           \r\n" + //
                    "| KSTH------------Kashti              \r\n" + //
                    "| KTT -----------Khutbav             \r\n" + //
                    "| KYN-------------Kalyan      \r\n" + //
                    "| KYOP--------Kottapalli          \r\n" + //
                    "| KZJ -----------Kazipet    \r\n" + //
                    "| LBG ----------Limbgaon            \r\n" + //
                    "| LONI -------------Loni                \r\n" + //
                    "| LS ----------Lasalgaon           \r\n" + //
                    "| LSR--------------Lasur               \r\n" + //
                    "| MAGH --------Manikgarh           \r\n" + //
                    "| MCI---------Mancherial           \r\n" + //
                    "| MGC--------------Mugat               \r\n" + //
                    "| MJBK----Manjari Budruk      \r\n" + //
                    "| MJF---------Malkajgiri          \r\n" + //
                    "| MKDD-------Mukundawadi     \r\n" + //
                    "| MKDI -----------Makudi              \r\n" + //
                    "| MLY----------Maula Ali           \r\n" + //
                    "| MMR-------------Manmad     \r\n" + //
                    "| MMZ--------- Mandamari           \r\n" + //
                    "| MQL----------- Mirkhal             \r\n" + //
                    "| MUE------------Mudkhed             \r\n" + //
                    "| MVO-------Manwath Road        \r\n" + //
                    "| MZL----------Mirzapali           \r\n" + //
                    "| NDD----------Nidadavolu \r\n" + //
                    "| NED-------------Nanded              \r\n" + //
                    "| NK----------Nasik Road          \r\n" + //
                    "| NPW-----Nipani Vadgaon      \r\n" + //
                    "| NSL-----------Nagarsol           \r\n" + //
                    "| NVT------------Navipet             \r\n" + //
                    "| NZB----------Nizamabad           \r\n" + //
                    "| NZD-------------Nuzvid              \r\n" + //
                    "| OEA--------------Odela               \r\n" + //
                    "| OPL--------------Uppal               \r\n" + //
                    "| PAA--------------Patas               \r\n" + //
                    "| PAU--------------Purna      \r\n" + //
                    "| PB------------Puntamba            \r\n" + //
                    "| PBN-----------Parbhani    \r\n" + //
                    "| PDG----------Paradgaon           \r\n" + //
                    "| PDGN---------Padhegaon           \r\n" + //
                    "| PDPL--------Peddapalli          \r\n" + //
                    "| PG-------------Pergaon             \r\n" + //
                    "| PIZ-------------Pingli              \r\n" + //
                    "| POZ--------------Potul               \r\n" + //
                    "| PPZ-----------Peddempet           \r\n" + //
                    "| PQL------------Pindlai             \r\n" + //
                    "| PSD------------Parsoda             \r\n" + //
                    "| PTKP--------Potkapalli          \r\n" + //
                    "| PTU-------------Partur              \r\n" + //
                    "| PUNE--------------Pune       \r\n" + //
                    "| RDM----------Ramgundam           \r\n" + //
                    "| RECH-------Rechni Road         \r\n" + //
                    "| RGO-----------Rotegaon            \r\n" + //
                    "| RGP-----Raghunathpalli      \r\n" + //
                    "| RGPM -----Raghavapuram        \r\n" + //
                    "| RJY---------Rajamundry          \r\n" + //
                    "| RNE------------Ranjani             \r\n" + //
                    "| RNJD---Ranjangaon Road     \r\n" + //
                    "| RRI-------------Rahuri              \r\n" + //
                    "| RVKH-----Ravindrakhani       \r\n" + //
                    "| SC--------Secunderabad        \r\n" + //
                    "| SCO ------------Satuna              \r\n" + //
                    "| SELU--------------Selu                \r\n" + //
                    "| SGND----Shrigonda Road      \r\n" + //
                    "| SKZR---Sirpur Kagazngr     \r\n" + //
                    "| SLO-----------Samalkot   \r\n" + //
                    "| SNVR---------Sanvatsar           \r\n" + //
                    "| SRL-------------Sarola              \r\n" + //
                    "| SRUR--------Sirpur Town         \r\n" + //
                    "| SVD------------Sarwari             \r\n" + //
                    "| SVN----------Sivungaon           \r\n" + //
                    "| TDD-----Tadepalligudem      \r\n" + //
                    "| TKMY---------Taklimiya           \r\n" + //
                    "| TNA -------------Thane               \r\n" + //
                    "| TR ---------------Taru                \r\n" + //
                    "| TUNI--------------Tuni                \r\n" + //
                    "| UMRI--------------Umri                \r\n" + //
                    "| UPR-----------Usmanpur            \r\n" + //
                    "| URI--------------Uruli               \r\n" + //
                    "| VBR------------Vambori             \r\n" + //
                    "| VHGN----------Wihirgaon           \r\n" + //
                    "| VL---------------Vilad               \r\n" + //
                    "| VPR-------------Visapur             \r\n" + //
                    "| VSKP------Vishakapatnam       \r\n" + //
                    "| WIRR-------------Wirur               \r\n" + //
                    "| WL------------Warangal            \r\n" + //
                    "| YL---------------Yeola               \r\n" + //
                    "| YT---------------Yevat               \r\n" + //
                    "| ZN-------------Jangaon             \r\n" + //
                    "+-------+---------------------+");
            resultTextArea.setEditable(true);
            resultTextArea.setBackground(Color.decode("#DBC4F0"));
            JScrollPane scrollPane = new JScrollPane(resultTextArea);
            frame.add(scrollPane, BorderLayout.CENTER);
             searchButton.addMouseListener(new java.awt.event.MouseAdapter() {
                @Override
                public void mousePressed(java.awt.event.MouseEvent evt){
                       try {  
                        resultTextArea.setText(null);
            Class.forName("com.mysql.cj.jdbc.Driver");  
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/avprtc", "root", "Vivek@123");
                // Statement s = conn.createStatement();
                System.out.println(startTextField.getText()+"  ");
                System.out.println(toTextField.getText()+"  ");
                PreparedStatement ps1=conn.prepareStatement("Select * from stations where sname=?");
                ps1.setString(1,startTextField.getText());
                 ResultSet rs1=ps1.executeQuery();
                //  resultTextArea.setText(rs1.getString(1));
                //   System.out.println("\n"+rs1.getString(1));
                String stt="";
                 if(rs1!=null){
                    // resultTextArea.setText("Please enter a valid station");
                    while(rs1.next()){
                         stt=rs1.getString(1);
                    }
                 }
                System.out.println(toTextField.getText()+"\n");
                PreparedStatement ps2=conn.prepareStatement("Select scode from stations where sname =?");
                ps2.setString(1,toTextField.getText());
                ResultSet rs2=ps2.executeQuery();
                //  System.out.println("\n"+rs2.getString(1));
                String end="";
                  if(rs2!=null){
                    // resultTextArea.setText("Please enter a valid station");
                    while(rs2.next()){
                          end=rs2.getString(1);
                    }
                 }
                PreparedStatement ps=conn.prepareStatement("Select * from Trains where tid in(Select X.tid from(Select * from TrainRoute where scode= ?)X, (Select * from TrainRoute where scode= ?)Y where X.tid=Y.tid and X.order_num<Y.order_num)");
                ps.setString(1,stt);
                ps.setString(2,end);
                ResultSet rs = ps.executeQuery();
                        resultTextArea.setText("_______________________________________________________________________________________________"+"\n"+"Date\t\tTrainNumber\t\tTrainName\t"+"\tSeatCount"+"\n"+"_______________________________________________________________________________________________"+"\n");
                        // String hi7="";
                if (rs != null) {// if rs == null, then there is no record in ResultSet to show
                    while (rs.next()) // By this line we will step through our data row-by-row
                    {
                            System.out.println(rs.getInt(1)+"\t"+rs.getString(2)+"\t"+rs.getInt(3)+"\n");
                           
                         String res1=Integer.toString(rs.getInt(1));
                        String res2=rs.getString(2);
                        String res3=Integer.toString(rs.getInt(3));
                        String res4=dateTextField.getText()+"\t\t"+res1+"\t\t"+res2+"\t"+res3;
                        resultTextArea.setText(resultTextArea.getText()+res4+"\n");
           }
        }

        System.out.println("hi7");
           ps.close();
            }
        catch (SQLException | ClassNotFoundException err) {  
            System.out.println("ERROR: " + err);  
        }
                resultTextArea.setText(resultTextArea.getText()+"_______________________________________________________________________________________________");
                    //   resultTextArea.setText(resultTextArea.getText()+"\n"+"welcome to my app!!!!!!!!");
                }
             });

}
}
       
